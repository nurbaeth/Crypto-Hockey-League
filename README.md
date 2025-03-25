# Crypto Hockey League

Crypto Hockey League is an on-chain multiplayer hockey simulation game built on Solidity. Players can create teams, play matches, and track their statistics in a decentralized way. The game uses blockchain mechanics to ensure fairness and transparency.

## Features
- 🏒 **Create Your Own Team** – Deploy your unique hockey team on the blockchain.
- ⚔ **Play Matches** – Compete against other teams in randomized matchups.
- 📊 **Track Stats** – Wins and losses are recorded on-chain. 
- 🔥 **Decentralized & Fair** – Game results are determined by blockchain randomness.
 
## How It Works
1. **Create a Team** – Call `createTeam(string _name)` to register a team.
2. **Compete in Matches** – Use `playMatch(uint256 _team1, uint256 _team2)` to simulate a match.
3. **Check Stats** – Query `getTeam(uint256 _teamId)` to view team stats. 

## Smart Contract Overview
The smart contract manages:
- Team creation and ownership. 
- Randomized match results.
- Win/loss tracking.

## Deployment
Deploy the `CryptoHockeyLeague` smart contract on an Ethereum-compatible blockchain.

## Future Improvements
- Player NFTs with unique attributes.
- On-chain tournaments.
- Betting system with crypto rewards.

## License
This project is open-source under the MIT License.

---
🚀 **Get ready to hit the ice in the Crypto Hockey League!**

