package frontControlloer;

public class ViewResolver {
	public static String makeUrl(String view) {
		return "/WEB-INF/views/"+view+".jsp"; //=> XML 설정파일에 기술
		
	}
}