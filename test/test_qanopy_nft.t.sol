// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {Test, console} from "forge-std/Test.sol";
import {QanopyNft} from "src/qanopy_nft.sol";
import {DeployQanopyNft} from "script/deploy_qanopy_nft.s.sol";

contract testBasicNFt is Test {
    DeployQanopyNft public deployQanopyNft;
    QanopyNft public qanopyNft;
    address public USER = makeAddr("user");
    address public OWNER = makeAddr("owner");
    string public constant TOKEN_URI =
        "ipfs://bafybeig37ioir76s7mg5oobetncojcm3c3hxasyd4rvid4jqhy4gkaheg4/?filename=0-PUG.json";
    string public constant TOKEN_URI2 =
        "ipfs://bafybeig37ioir76s7mg5oobetncojcm3c3hxasydvid4jqhy4gkaheg4/?filename=0-PUG.json";

    function setUp() public {

        vm.prank(OWNER);
        deployQanopyNft = new DeployQanopyNft();
        qanopyNft = deployQanopyNft.run(OWNER);
    }

    function testNameIsCorrect() public view {
        string memory expectedName = "Qanopy";
        string memory actualName = qanopyNft.name();

        bytes memory encodedNameExpected = abi.encodePacked(expectedName);
        bytes memory enecodedActualName = abi.encodePacked(actualName);

        assert(keccak256(encodedNameExpected) == keccak256(enecodedActualName));
    }

    function testCanMintAndHaveABalance() public {
        vm.prank(OWNER);
        qanopyNft.mintNft(TOKEN_URI);

        assert(qanopyNft.balanceOf(OWNER) == 1);
        assert(keccak256(abi.encodePacked(qanopyNft.tokenURI(0))) == keccak256(abi.encodePacked(TOKEN_URI)));
    }

    function testOnlyOwnerCanCall() public {
        vm.prank(USER);
        vm.expectRevert(QanopyNft.QanopyNft__OnlyOwnerCanCall.selector);
        qanopyNft.mintNft(TOKEN_URI);
        
    }

    function testChangeTokenURI() public {
        vm.prank(OWNER);
        qanopyNft.mintNft(TOKEN_URI);

        
        vm.prank(OWNER);
        qanopyNft.changeTokenURI(TOKEN_URI2, 0);


        assert(keccak256(abi.encodePacked(qanopyNft.tokenURI(0))) == keccak256(abi.encodePacked(TOKEN_URI2)));
    }
}