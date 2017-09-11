class Coin
  def check(amount)
    remainder = amount % 25
    quarters = amount - remainder
    @quaters = quarters/25

    dimes_remainder = remainder % 10
    dimes = remainder - dimes_remainder
    @dimes = dimes/10

    nickles_remainder = dimes_remainder % 5
    nickles = dimes_remainder - nickles_remainder
    @nickles = nickles/5

    pennies_remainder = nickles_remainder % 1
    pennies = nickles_remainder - pennies_remainder
    @pennies = pennies/1

    coins = [@quaters, @dimes, @nickles, @pennies]
    coins
  end
end
