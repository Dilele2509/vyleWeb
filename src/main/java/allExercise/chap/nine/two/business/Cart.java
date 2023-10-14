package allExercise.chap.nine.two.business;

import java.io.Serializable;
import java.util.ArrayList;

public class Cart implements Serializable {

    private ArrayList<LineItem> items;

    public Cart() {
        items = new ArrayList<LineItem>();
    }

    public ArrayList<LineItem> getItems() {
        return items;
    }

    public int getCount() {
        return items.size();
    }

    public void addItem(LineItem item) {
        String code = item.getProduct().getCode();
        int quantity = item.getQuantity();
        for (int i = 0; i < items.size(); i++) {
            LineItem lineItem = items.get(i);
            if (lineItem.getProduct().getCode().equals(code)) {
                lineItem.setQuantity(quantity);
                return;
            }
        }
        items.add(item);
    }

    public void removeItem(LineItem item) {
        String code = item.getProduct().getCode();
        for (int i = 0; i < items.size(); i++) {
            LineItem lineItem = items.get(i);
            if (lineItem.getProduct().getCode().equals(code)) {
                items.remove(i);
                return;
            }
        }
    }

    /*public double calculateTotalPrice() {
        double total = 0.0;

        for (LineItem item : items) {
            String totalCurrencyFormat = item.getTotalCurrencyFormat();

            // Assuming getTotalCurrencyFormat returns a String like "$12.34"
            // Parse the string and add the numeric value to the total
            total += parseCurrencyFormat(totalCurrencyFormat);
        }

        return total;
    }

    // Helper method to parse currency format and return a numeric value
    private double parseCurrencyFormat(String currencyFormat) {
        // Remove currency symbols and commas, then parse the value
        return Double.parseDouble(currencyFormat.replaceAll("[^\\d.]+", ""));
    }*/
}
