class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @booking.menu = @menu
    @booking.user = current_user

    if @booking.save
      redirect_to menu_path
    else
      render :new, status: :unprocessable_entity
    end
  end

private

  def set_menu
    @menu = Menu.find(params[:menu_id])
  end

  def booking_params
    params.require(:booking).permit(:nb_guest, :menu_id, :menu_id)
  end
end
