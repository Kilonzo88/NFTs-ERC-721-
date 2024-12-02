////SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {Test,console} from "forge-std/Test.sol";
import {DeployMoodNft} from "../../script/DeployMoodNft.s.sol";

contract DeployMoodNftTest is Test {
    DeployMoodNft public deployer;

    function setUp() public {
    deployer = new DeployMoodNft();
    }

    function testConvertSvgToUri() public view {
       string 
       memory expectedUri = "data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI1MDAiIGhlaWdodD0iNTAwIj48dGV4dCB4PSIwIiB5ID0gIjE1IiBmaWxsPSJ3aGl0ZSI+IGhpISBZb3UgZGVjb2RlZCB0aGlzIDwvdGV4dD48L3N2Zz4=";
       string 
       memory svg = '<svg xmlns="http://www.w3.org/2000/svg" width="500" height="500"><text x="0" y = "15" fill="white"> hi! You decoded this </text></svg>';
       string memory actualUri = deployer.svgToImageURI(svg); 
       assert(keccak256(abi.encodePacked(actualUri)) == 
       keccak256(abi.encodePacked(expectedUri)));

       console.log("Expected:", expectedUri);
       console.log("Actual:", actualUri);
    }

    
    
}

