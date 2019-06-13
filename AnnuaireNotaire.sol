pragma solidity ^0.5.1;
contract AnnuaireNotaires {
    
    /* Une variable personnalisée 'Diplome' */
    struct Notaire {
        string anneeInscription;
        string nom;
        string prenom;
    }
    address addresseNotaire;
    mapping(address => Notaire) notaires;
    
    constructor() public {
        
    }
    
    function ajouterNotaire(string memory _anneeInscription, string memory _nom, string memory _prenom) public {
        addresseNotaire = msg.sender;
        Notaire memory unNotaire = Notaire(_anneeInscription, _nom, _prenom);
        notaires[addresseNotaire] = unNotaire;
    }
    
    
    function rechercherNotaire(address _addresseNotaire) public view returns(string memory, string memory, string memory) {
        return (notaires[_addresseNotaire].nom, notaires[_addresseNotaire].prenom, notaires[_addresseNotaire].anneeInscription);
    }
}
