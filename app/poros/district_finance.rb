class DistrictFinance

  attr_reader :salaries_total, :salaries_instruction  

  def initialize(data)

    @salaries_total = data[:results].first[:salaries_total]

    @salaries_instruction = data[:results].first[:salaries_instruction]

  end

end