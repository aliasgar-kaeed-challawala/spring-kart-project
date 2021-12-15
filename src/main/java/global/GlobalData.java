package global;

import java.util.ArrayList;
import java.util.List;

import com.example.model.ProductDTO;

public class GlobalData {
	public static List<ProductDTO> cart;
	static {
		cart = new ArrayList<ProductDTO>();
	}
}
