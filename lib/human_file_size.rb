module HumanFileSize
  UNITS = %w[B KB MB GB TB PB EB ZB YB].freeze
  BASE = 1024

  def self.format(bytes, precision: 2)
    return "0 B" if bytes.nil? || bytes.zero?

    units = %w[B KB MB GB TB PB]
    exponent = bytes.zero? ? 0 : (Math.log(bytes) / Math.log(1024)).to_i
    exponent = [exponent, units.size - 1].min
    value = bytes.to_f / (1024 ** exponent)

    formatted_value = "%.#{precision}f" % value
    "#{formatted_value} #{units[exponent]}"
  end
end