// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.6;

contract WARP {
    struct S {
        uint8[] m;
    }
    S s;

    function f() public returns (bool correct) {
        s.m.push();
        assembly {
            mstore(0, s.slot)
            sstore(pedersen(0, 0x20), 257)
        }
        uint8 x = s.m[0];
        uint256 r;
        assembly {
            r := x
        }
        correct = r == 0x01;
    }
}
// ====
// compileViaYul: also
// ----
// f() -> true
