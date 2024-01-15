#[starknet::interface]
trait IListExample<TContractState> {
    fn add_in_amount(ref self: TContractState, number: u128);
    fn add_in_task(ref self: TContractState, description: felt252, status: felt252);
    fn is_empty_list(self: @TContractState) -> bool;
    fn list_length(self: @TContractState) -> u32;
    fn get_from_index(self: @TContractState, index: u32) -> u128;
    fn set_from_index(ref self: TContractState, index: u32, number: u128);
    fn pop_front_list(ref self: TContractState);
    fn array_conversion(self: @TContractState) -> Array<u128>;
}
#[starknet::contract]
mod ListExample {
    use alexandria_storage::list::{List, ListTrait};

    #[storage]
    struct Storage {
        amount: List<u128>,
        tasks: List<Task>
    }
