module ApplicationHelper
    def bootstrap_class_for_flash(type)
        case type
          when 'notice' then "alert-info"
          when 'success' then "alert-success"
          when 'error' then "alert-danger"
          when 'alert' then "alert-warning"
        end
      end

      def current_cart
        @order = current_user.orders.last
      end
end
