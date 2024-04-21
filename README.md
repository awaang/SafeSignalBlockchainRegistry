# SafeSignalBlockchainRegistry
## Inspiration

The SafeSignal Blockchain Registry was inspired by the critical need for improved safety and accountability in the use of emergency location beacons like EPIRBs (emergency position indicating radio beacons) and PLBs (personal locator beacons). These devices are essential for rapid response in life-threatening situations, yet there is a gap in standardized, transparent handling and maintenance logs. By integrating blockchain technology with Starknet, we aim to decrease the many problems that may come with the manual processing of beacon registration, such as complexity issues and verification delays.

## What it does

Upon the successful purchase of an EPIRB or PLB, a unique smart contract is automatically generated on the Ethereum blockchain. This smart contract serves as a digital representation of the purchased device. Each smart contract contains essential details about the purchased EPIRB or PLB, such as its serial number, owner information, registration status, and any relevant metadata. This information is stored immutably on the blockchain, ensuring transparency and tamper-proof records. The decentralized nature of the blockchain ensures that registration information is transparent and accessible to authorized parties, such as search and rescue teams, regulatory authorities, and device owners. We also look to reduce the risk of duplicate or invalid registrations and ensuring that each device is uniquely and accurately identified on the blockchain. Automating the registration process through smart contracts streamlines the registration process, reducing administrative overhead and eliminating the need for manual registration procedures.

## How we built it

Python, Cairo, MongoDB

## What's next for Safe Signal Blockchain Registry

We look to expand our project to encompass various types of emergency equipment. We also look to streamline the process for data verification to ensure reliability before initiating smart contracts in order to maintain data integrity. Lastly, to highlight the importance of device compliance and maintenance, we wish to integrate maintenance features into the smart contracts, such as sending automated safety reminders every two years.
