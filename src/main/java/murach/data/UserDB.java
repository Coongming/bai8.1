package murach.data;
import murach.business.User;

public class UserDB {
    public static int insert(User user) {
        // giả lập lưu user vào database
        System.out.println("Saving user: " + user.getEmail());
        return 1;
    }
}
