# frozen_string_literal: true

require 'minitest/autorun'
require 'human_file_size'

class HumanFileSizeTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::HumanFileSize::VERSION
  end

  def test_format_returns_zero_bytes_for_nil_input
    assert_equal "0 B", HumanFileSize.format(nil)
  end

  def test_format_returns_zero_bytes_for_zero_input
    assert_equal "0 B", HumanFileSize.format(0)
  end

  def test_format_bytes_correctly
    assert_equal "100.00 B", HumanFileSize.format(100)
  end

  def test_format_kilobytes_correctly
    assert_equal "1.00 KB", HumanFileSize.format(1024)
  end

  def test_format_megabytes_correctly
    assert_equal "1.00 MB", HumanFileSize.format(1048576)
  end

  def test_format_gigabytes_correctly
    assert_equal "1.00 GB", HumanFileSize.format(1073741824)
  end

  def test_format_terabytes_correctly
    assert_equal "1.00 TB", HumanFileSize.format(1099511627776)
  end

  def test_format_with_default_precision
    assert_equal "1.50 KB", HumanFileSize.format(1536)
  end

  def test_format_with_specified_precision
    assert_equal "1.5 KB", HumanFileSize.format(1536, precision: 1)
    assert_equal "1.500 KB", HumanFileSize.format(1536, precision: 3)
  end

  def test_format_handles_large_numbers
    assert_equal "1.00 PB", HumanFileSize.format(1125899906842624)
  end
end