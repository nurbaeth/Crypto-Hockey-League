pragma solidity ^0.8.19;

contract CryptoHockeyLeague {
    struct Team {
        string name;
        address owner;
        uint256 wins;
        uint256 losses;
    }
    
    struct Match {
        uint256 team1;
        uint256 team2;
        uint256 winner;
    }
    
    Team[] public teams;
    Match[] public matches;
    mapping(address => uint256) public teamOwners;
    
    event TeamCreated(uint256 teamId, string name, address owner);
    event MatchPlayed(uint256 matchId, uint256 team1, uint256 team2, uint256 winner);
    
    function createTeam(string memory _name) public {
        require(teamOwners[msg.sender] == 0, "You already own a team");
        
        teams.push(Team({
            name: _name,
            owner: msg.sender,
            wins: 0,
            losses: 0
        }));
        
        uint256 teamId = teams.length;
        teamOwners[msg.sender] = teamId;
        
        emit TeamCreated(teamId, _name, msg.sender);
    }
    
    function playMatch(uint256 _team1, uint256 _team2) public {
        require(_team1 < teams.length && _team2 < teams.length, "Invalid teams");
        require(_team1 != _team2, "A team cannot play against itself");
        
        uint256 winner = (block.timestamp % 2 == 0) ? _team1 : _team2;
        uint256 loser = (winner == _team1) ? _team2 : _team1;
        
        teams[winner].wins++;
        teams[loser].losses++;
        
        matches.push(Match({
            team1: _team1,
            team2: _team2,
            winner: winner
        }));
        
        emit MatchPlayed(matches.length - 1, _team1, _team2, winner);
    }
    
    function getTeam(uint256 _teamId) public view returns (Team memory) {
        require(_teamId < teams.length, "Invalid team ID");
        return teams[_teamId];
    }
}
