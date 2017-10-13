package beans;

public class CountClicks {
	
	int qtdDAD;
	int qtdDI;
	int qtdJava;
	int qtdPUC;
	
	public CountClicks() {
		qtdDAD = 0;
		qtdDI = 0;
		qtdJava = 0;
		qtdPUC = 0;
	}
	
	public int getQtdDAD() {
		return qtdDAD;
	}
	public int getQtdDI() {
		return qtdDI;
	}
	public int getQtdJava() {
		return qtdJava;
	}
	public int getQtdPUC() {
		return qtdPUC;
	}
	
	public void setQtdDAD(int r) {
		this.qtdDAD = r;
	}
	public void setQtdDI(int r) {
		this.qtdDI = r;
	}
	public void setQtdJava(int r) {
		this.qtdJava = r;
	}
	public void setQtdPUC(int r) {
		this.qtdPUC = r;
	}
}
