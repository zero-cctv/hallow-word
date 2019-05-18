# hallow-word
word-all(什么都有的杂物库)

package com.fourth;
public class aa extends bb{

	public aa() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		aa one =new aa();

	}

}


package com.fourth;
import java.io.*;



public class bb {
	private File fo;
	private File fofo;
	private String str="good job";
	public String dir="c:\\bb"; 
	

	public bb() {
		this.fo=new File(this.dir);
		this.fofo=new File(this.dir,"a.txt");
		this.str=(String)text();
		
		// TODO Auto-generated constructor stub
	}
	public Object text() {
		try{
//			writes(this.str);
			reads();

//		create();
			System.out.print("ok");
		}
		catch(FileNotFoundException e) {
			try {
			create();
			create_file();
			return text();
			
			}
			catch(Exception e1){
				e1.printStackTrace();
				System.out.print(e1);
			}
		}
		catch(Exception e){
			e.printStackTrace();
			System.out.print(e);
		}
		return this.str;
		
	}
	public void create() throws IOException{

		this.fo.mkdir();

	}
	public void create_file() throws IOException{

		this.fofo.createNewFile();

	}
	public void reads() throws IOException{
		FileInputStream f=new FileInputStream(this.fofo);
		
		InputStreamReader ff=new InputStreamReader(f);
		BufferedReader fff=new BufferedReader(ff);
		String s=fff.readLine();
		
		System.out.println(s);
		
	}
	public void writes(String str) throws IOException{
		System.out.println(str);
		FileOutputStream  f=new FileOutputStream(this.fofo);
		BufferedOutputStream ff=new BufferedOutputStream(f);
		PrintWriter pw=new PrintWriter(ff);
		
		pw.print(str);
		pw.close();

		
	}

}
