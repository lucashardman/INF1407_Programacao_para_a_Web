package beans;

public class BannerNumber {

	private int random;
	
	public BannerNumber() {
		random = randomWithRange(0,3);
	}
	
    private int randomWithRange(int min, int max){
        int range = (max - min) + 1;     
        return (int)(Math.random() * range) + min;
    }
    
    public int getRandom() {
		return random;
	}

	public void setRandom(int r) {
		this.random = r;
	}
}
