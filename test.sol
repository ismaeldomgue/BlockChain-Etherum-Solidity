pragma solidity ^0.5.1;
contract Test {
    
    string[] tbEntretien;
    address proprietaire;
    event ismael(string);
    
    constructor() public {
        proprietaire = msg.sender;
    }
    
    function ajouterEntretien(string memory _entretien) public isProprietaire(proprietaire) limiteTaille(_entretien, 10) {
        tbEntretien.push(_entretien);
        emit ismael(_entretien);
    }
    
    function afficherElement(uint _id) public view returns(string memory){
        return tbEntretien[_id];
    }
    
    modifier limiteTaille(string memory message, uint taille) {
        require(bytes(message).length <= taille);
        _;
    }
    
    modifier isProprietaire(address addresse) {
        require(addresse == msg.sender);
        _;
    }
    
    
    
}
