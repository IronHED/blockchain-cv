pragma solidity ^0.4.15;

import "./CVExtender.sol";

contract BlockchainCV is CVExtender {
    
    mapping (address=>CV) ListOfResumes;
    
    struct CV {
        string cvWebPage;
        string cvDescription;
        string cvTitle;
        string cvAuthor;
    }

     /**
     * Your functions go here
     *
     * */

    //function myFunction1() public {}
    //function myFunction2() public {}


    /**
     * Below is for our CV!
     * */

    function getListOfResumes() public constant returns(address resume) {
        return resume.cvWebPage;
    }
    function getAddress() public constant returns(string) {
        return "http://www.example.org";
    }

    function getDescription() public constant returns(string) {
        return "This is an example";
    }
    function getTitle() public constant returns(string) {
        return "SimpleExample";
    }
    function getAuthor() public constant returns(string, string) {
        return ("Thomas", "thomas@example.org");
    }
}