package br.com.meslin.chat;

public class Info
{
	private String nick;
	private String texto;
	private String ip;
	
	/**
	 * 
	 * Construtor do <b>objeto</b> que contém as informações<br>
	 * Use esse contrutor para criar o objeto
	 * 
	 * @param nick nickname do usuário
	 * @param texto texto do usuário
	 * @param ip endereço ip da máquina do usuário
	 */
	public Info(String nick, String texto, String ip)
	{
		super();
		this.nick = nick;
		this.texto = texto;
		this.ip = ip;
	}
	/**
	 * Construtor sem parâmetro<br>
	 * Não faz nada além de apenas construir o objeto Info
	 */
	public Info() {}
	
	/**
	 * Recupera o nickname
	 * @return retorna o nickname
	 */
	public String getNick()
	{
		return nick;
	}
	
	/**
	 * Configura o nickname
	 * @param nick
	 */
	public void setNick(String nick)
	{
		this.nick = nick;
	}
	public String getTexto()
	{
		return texto;
	}
	public void setTexto(String texto)
	{
		this.texto = texto;
	}
	public String getIp()
	{
		return ip;
	}
	public void setIp(String ip)
	{
		this.ip = ip;
	}
}
