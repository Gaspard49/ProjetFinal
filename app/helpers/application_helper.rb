module ApplicationHelper
    def bootstrap_class_for_flash(type)
        case type
          when 'notice' then "alert-info"
          when 'success' then "alert-success"
          when 'error' then "alert-danger"
          when 'alert' then "alert-warning"
        end
      end

      def cart_navbar
        @order = current_user.orders.where("status = ?", true)
        return @order[0]
      end
end
