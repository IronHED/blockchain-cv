pragma solidity ^0.4.15;

import "./CVExtender.sol";

contract BlockchainCV is CVExtender {
    
    struct Person {
        string FirstName;
        string LastName;
    }
    
    struct CV {
        string WebPage;
        string Description;
        string Title;
        string Author;
        string AuthorEmail;
        mapping(address => Person) People;
    }
    
    uint numberOfResumes;
    mapping (address=>CV) ListOfResumes;

    function addCV(address newCV, string newWebPage, string newDescription, string newTitle, string newAuthor, string newAuthorEmailAddress) public {
        ListOfResumes[newCV] = CV(newWebPage,newDescription,newTitle,newAuthor,newAuthorEmailAddress);
        numberOfResumes++;
    }
    function getCVAddress() public constant returns(address, uint) {
        return (msg.sender, this.balance);
    }
    function getAddress() public constant returns(string) {
        return  ListOfResumes[msg.sender].WebPage;
    }

    function getDescription() public constant returns(string) {
        return ListOfResumes[msg.sender].Description;
    }
    function getTitle() public constant returns(string) {
        return ListOfResumes[msg.sender].Title;
    }
    function getAuthor() public constant returns(string, string) {
        return (ListOfResumes[msg.sender].Author, ListOfResumes[msg.sender].AuthorEmail);
    }
}
