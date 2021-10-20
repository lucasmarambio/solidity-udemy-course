pragma solidity >=0.4.4 < 0.7.0;
pragma experimental ABIEncoderV2;

contract Notas {
    address professor;

    mapping (bytes32 => uint) evaluations;
    string[] revisions;
    
    event EvaluatedStudent(bytes32 hashStudent);
    event RevisionAskedBy(string idStudent);

    constructor () public {
        professor = msg.sender;
    }

    modifier professorOnly {
        require (professor == msg.sender, "Solo el profesor puede evaluar");
        _;
    }

    function Evaluate(string memory idStudent, uint grade) public professorOnly {
        bytes32 hashStudent = keccak256(abi.encode(idStudent));
        evaluations[hashStudent] = grade;
        emit EvaluatedStudent(hashStudent);
    }

    function GetNote(string memory idStudent) public view returns(uint){
        bytes32 hashStudent = keccak256(abi.encode(idStudent));
        return evaluations[hashStudent];
    }

    function AskRevision(string memory idStudent) public {
        revisions.push(idStudent);
        emit RevisionAskedBy(idStudent);
    }

    function GetRevisions() public view professorOnly returns(string[] memory){
        return revisions;
    }
}