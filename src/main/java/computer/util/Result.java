package computer.util;

import lombok.Data;

/**
 * 
 * @author dali
 * @date 2020-7-23
 * @Description 返回json对象
 *
 */

@Data
public class Result {
    private static int SUCCESS_CODE = 0;
    private static int FAIL_CODE = 1;

    private int code;
    private String message;
    private Object data;

    public Result(int code, String message, Object data) {
        this.code = code;
        this.message = message;
        this.data = data;
    }

    public static Result success() {
        return new Result(SUCCESS_CODE,null,null);
    }
    public static Result success(Object data) {
        return new Result(SUCCESS_CODE,"",data);
    }
    public static Result fail(String message) {
        return new Result(FAIL_CODE,message,null);
    }
}
