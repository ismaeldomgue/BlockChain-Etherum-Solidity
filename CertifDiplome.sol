pragma solidity ^0.5.1;
contract Diplomes {
    
    /* Une variable personnalisée 'Diplome' */
    struct Diplome {
        string nom;
        string prenom;
        uint   numeroDiplome;
    }
    
    Diplome[] public diplomes;
    
    function ajouterDiplome(string memory _nom, string memory _prenom, uint _numeroDiplome) public {
        Diplome memory unDiplome = Diplome(_nom, _prenom, _numeroDiplome);
        diplomes.push(unDiplome);
    }
    
    function totalDiplomes() public view returns(uint) {
        return diplomes.length;
    }
    
    function afficherDiplome(uint _id) public view returns(string memory, string memory, uint) {
        return (diplomes[_id].nom, diplomes[_id].prenom, diplomes[_id].numeroDiplome);
    }
}
