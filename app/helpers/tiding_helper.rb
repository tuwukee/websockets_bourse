module TidingHelper
  def show_tiding(tiding)
    item = Item.find(tiding.item_id)
    I18n.t("enumerize.tiding.kind.#{tiding.kind}", :name => item.name, :amount => item.amount, :sold_amount => tiding.sold_amount, :date => tiding.created_at)
  end
end
