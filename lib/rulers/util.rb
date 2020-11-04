module Rulers
  # Lifted from ActiveSupport
  # 1: Replace `::` with `/`.
  # 2: Sub a `_` between any two more more consecutive uppercase followed by a lowercase.
  # 3: Sub a `_` between any lowercase-number-uppercase.
  # 4: Turn all `-` into `_`.
  # 5: Lowercase all the things.
  def self.to_underscore(string)
    string
      .gsub(/::/, '/')
      .gsub(/([A-Z]+)([A-Z][a-z])/, '\1_\2')
      .gsub(/([a-z\d])([A-Z])/, '\1_\2')
      .tr('-', '_')
      .downcase
  end
end
