pragma solidity =0.7.3;

contract MyFirstContract{
    
    uint256 number = 0;
    string[] names;
    
    mapping (string => uint) public phoneNumbers;
    
    function addMobileNumber(string memory _name, uint _mobileNumber) public{
        phoneNumbers[_name] = _mobileNumber;
    }
    
    function getMobileNumber(string memory _name) public view returns (uint){
        return phoneNumbers[_name];
    }
    
    function addName(string memory _name) public {
        names.push(_name);
    }
    
    function getName(uint _index) public view returns (string memory){
        return names[_index];
    }
    
    function getNamesLength() public view returns (uint256){
        return names.length;
    }
    
    function getNumberMultiplied(uint256 _num) public view returns (uint256){
        return number * _num;
    }
    
    function addNumbers(uint256 _num1, uint256 _num2) public {
        number = _num1 + _num2;
    }
    
    function changeNumber(uint256 _num) public {
        number = number + _num;
    }
    
    function getNumber() public view returns (uint256) {
        return number;
    }
}