class CashRegister
    attr_accessor :total, :discount, :title, :quantity, :price, :items

    def initialize(*discount)
        @total = 0
        @discount = 20
        @title =[]
        @price = price
    end

    def add_item(title, price, quantity = 1)
        i = 0
        while i < quantity do
            self.title << title
            i += 1
        end
        self.price = price * quantity
        self.quantity = quantity
        self.total += price * quantity
    end

    def apply_discount
        if self.total == 0 
            return "There is no discount to apply."
        elsif self.discount == 20
            discount_cal = self.discount.to_f / 100
            self.total = self.total - (self.total * discount_cal)
            return "After the discount, the total comes to $#{self.total.to_i}."
        end
    end

    def items 
        self.title
    end

    def void_last_transaction
        self.total = self.total - self.price
        return self.total.to_f
    end
end