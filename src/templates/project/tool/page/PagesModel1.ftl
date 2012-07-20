package ${project.org}.tool.paging;


/**
 * User: joeytang
 * Date: ${project.currentTime}
 * 生成的样式为  共[1/8]页 第一页 上一页 下一页 最末页 
 */
public class PagesModel1 implements PagesModel {

    /**
	 * 根据 commonlist和pagenum生成分页html代码
	 * @param cl 包含分页需要的信息
	 * @param pageNum 限制每屏显示的页码个数 ，如：上一页  1 2 3 4 5 下一页该值表示中间显示多少个页码
	 * @param op 得到数据列表后的操作
	 * @return
	 */
	public String genPageHtml(CommonList cl, int pageNum,String op) {
		StringBuffer buffer = new StringBuffer();
		buffer.append("共[" + cl.pageNo + "/" + cl.pageNum + "]页" + "&nbsp;");
        if (cl.pageNo == 1) {
            buffer.append("第一页" + "&nbsp;");
            buffer.append("上一页" + "&nbsp;");
        } else if (cl.pageNo > 1) {
            buffer.append(" <a href=\"javascript:;\" onclick=\"_tunePage(" + 1 + ",'','"+ cl.uri+"','"+ cl.target +"','"+op+"','" + cl.searchStr + "')\" >第一页</a>");
            buffer.append(" <a href=\"javascript:;\" onclick=\"_tunePage(" + (cl.pageNo - 1) + ",'','"+ cl.uri+"','"+ cl.target +"','"+op+"','" + cl.searchStr + "')\" >上一页</a>");
        }
		if (cl.pageNo == cl.pageNum) {
            buffer.append("下一页" + "&nbsp;");
            buffer.append("最末页" + "&nbsp;");
        } else if (cl.pageNo < cl.pageNum) {
            buffer.append(" <a href=\"javascript:;\" onclick=\"_tunePage(" + (cl.pageNo + 1) + ",'','"+ cl.uri+"','"+ cl.target +"','"+op+"','" + cl.searchStr + "')\" >下一页</a>");
            buffer.append(" <a href=\"javascript:;\" onclick=\"_tunePage(" + cl.pageNum + ",'','"+ cl.uri+"','"+ cl.target +"','"+op+"','" + cl.searchStr + "')\" >最末页</a>");
        }
		return buffer.toString();
	}
    
}