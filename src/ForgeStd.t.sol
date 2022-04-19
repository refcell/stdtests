// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.13;

import "forge-std/Test.sol";

contract TestContract is Test {
    ErrorsTest test;

    function setUp() public {
        test = new ErrorsTest();
    }

    function testExpectArithmetic() public {
        vm.expectRevert(stdError.arithmeticError);
        test.arithmeticError(10);
    }
}

contract ErrorsTest {
    function arithmeticError(uint256 a) public pure {
        a - 100;
    }
}