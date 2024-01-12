
use openzeppelin::utils::UnwrapAndCast;
use openzeppelin::utils::selectors;
use openzeppelin::utils::try_selector_with_fallback;
use starknet::ContractAddress;

#[derive(Copy, Drop)]
struct DualCaseSRC5 {
    contract_address: ContractAddress
}

trait DualCaseSRC5Trait {
    fn supports_interface(self: @DualCaseSRC5, interface_id: felt252) -> bool;
}
