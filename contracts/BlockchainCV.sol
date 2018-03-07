pragma solidity ^0.4.15;

import "./CVExtender.sol";

contract BlockchainCV is CVExtender {
    
    struct CV {
        string cvWebPage;
        string cvDescription;
        string cvTitle;
        string cvAuthor;
        string cvAuthorEmail;
    }

    mapping (address=>CV) ListOfResumes;

    function setCVData(address newCV, string webPage, string description, string title, string author, string authorEmailAddress) public {
        ListOfResumes[newCV] = CV(webPage,description,title,author,authorEmailAddress);
    }
    
    function getWebAddress() public constant returns(string) {
        //return myCV.cvWebPage;
        return ListOfResumes[msg.sender].cvWebPage;
    }
    
    function getAddress() public constant returns(string) {
        return  ListOfResumes[msg.sender].cvWebPage;
    }

    function getDescription() public constant returns(string) {
        return ListOfResumes[msg.sender].cvDescription;
    }
    function getTitle() public constant returns(string) {
        return ListOfResumes[msg.sender].cvTitle;
    }
    function getAuthor() public constant returns(string, string) {
        return (ListOfResumes[msg.sender].cvAuthor, ListOfResumes[msg.sender].cvAuthorEmail);
    }
}