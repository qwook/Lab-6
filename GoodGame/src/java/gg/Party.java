
package gg;

public class Party {
	public String name;
	Evidence licenses;
	
	public Party(String name){
		this.name = name;
		licenses = new Evidence();
	}
	
	public void addClaim(String claimName){
		Claim cl = new Claim(claimName);
		licenses.addGameLicense(cl);
	}
	
	public boolean checkClaim(String gameTitle){
		for (int i = 0; i < licenses.claims.size(); i++){
			if (licenses.claims.get(i).name.equalsIgnoreCase(gameTitle)){
				licenses.claims.get(i).isValidClaim = true;
				return true;
			}
		}
		return false;
	}
	
	public boolean verifyIntegrity(){
		for (int i = 0; i < licenses.claims.size(); i++){
			if (licenses.claims.get(i).isValidClaim == true){
				return true;
			}
		}
		return false;
	}
}
