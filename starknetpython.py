from starkware.starknet.compiler.compile import compile_starknet_files
from starkware.starknet.services.api import Starknet
from starkware.starknet.compiler.compile import StarknetContractMetadata

def main():
    contract_file_path = "/../contract.cairo"
    compiled_contract = compile_starknet_files([contract_file_path])

    starknet = Starknet()

    contract_address = starknet.deploy(
        contract=compiled_contract,
        contract_metadata=StarknetContractMetadata(),
    )

    print("Contract deployed successfully!")
    print("Contract address:", contract_address)
