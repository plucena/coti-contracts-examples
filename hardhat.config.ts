import { HardhatUserConfig } from "hardhat/config";
import "@nomicfoundation/hardhat-toolbox";

import dotenv from "dotenv"
dotenv.config()

const config: HardhatUserConfig = {
  defaultNetwork: "devnet",
  solidity: {
    version: "0.8.20",
    settings: {
      optimizer: {
        enabled: true,
        runs: 2000
      }
    }
  },
  networks: {
    devnet: {
      url: "https://devnet.coti.io/rpc",
      chainId: 13068200,
    },
  }
}

export default config;
