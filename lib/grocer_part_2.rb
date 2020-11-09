require_relative './part_1_solution.rb'
require 'pry'


# #loop through the coupons 
# def apply_coupons(cart, coupons)
# counter = 0 
# while counter < coupons.length 
# cart_item = find_item_by_name_in_collection(coupons[counter][:item], cart)
# couponed_item_name = "#{coupons[counter][:item]} W/COUPON"
# cart_item_with_coupon = find_item_by_name_in_collection(couponed_item_name, cart)
#   if cart_item && cart_item[:count] >= coupons[:counter][:num] 
#     if cart_item_with_coupon
#         cart_item_with_coupon[:count] += coupons[counter][:num]
#         cart_item[:count] -= coupons[counter][:num]
#     else
#       cart_item_with_coupon = {
#         :item => couponed_item_name,
#         :price => coupons[counter][:cost] / coupons[counter][:num],
#         :count => coupons[counter][:num],
#         :clearance => cart_item[:clearance]
#       }
#       cart << cart_item_with_coupon
#       cart_item[:count] -= coupons[counter][:num]
#     end 
#     end
#   counter += 1 
#   end 
# cart 
# end 

def apply_coupons(cart, coupons)
    if cart.keys.include? coupon[:item]
      if cart[coupon[:item]][:count] >= coupon[:num]
        new_name = "#{coupon[:item]} W/COUPON"
        if cart[new_name]
          cart[new_name][:count] += coupon[:num]
        else
          cart[new_name] = {
            count: coupon[:num],
            price: coupon[:cost]/coupon[:num],
            clearance: cart[coupon[:item]][:clearance]
          }
        end
        cart[coupon[:item]][:count] -= coupon[:num]
      end
    end
  end
  cart
end	
end




def apply_clearance(cart)
 
end


def checkout(cart, coupons)
  
end
