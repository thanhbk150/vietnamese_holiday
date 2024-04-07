# VietnameseHoliday

This library provides a list of public holidays in Vietnam during the year. Including solar and lunar holidays.

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add vietnamese_holiday

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install vietnamese_holiday

## Usage

```Ruby
VietnameseHoliday.lunar_date('2024-01-01')
# => <LunarCalendar::Lunar:0x000000012a46ead0 @day=20, @leap=false, @month=11, @year=2023>

VietnameseHoliday.check('2024-01-01')VietnameseHoliday.check('2024-04-18')
# => true

VietnameseHoliday.name('2024-04-18')
# => ["Giỗ tổ Hùng Vương"]

VietnameseHoliday.in_month(2024, 04)
# => [
#      {:date=>Tue, 30 Apr 2024, :name=>"Ngày giải phóng miền Nam"},
#      {:date=>Thu, 18 Apr 2024, :name=>"Giỗ tổ Hùng Vương"}
#    ]

VietnameseHoliday.in_year(2024)
# =>
# [
#  {:date=>Mon, 01 Jan 2024, :name=>"Tết Dương lịch"},
#  {:date=>Fri, 09 Feb 2024, :name=>"Ngày Quốc Khánh"},
#  {:date=>Tue, 30 Apr 2024, :name=>"Ngày giải phóng miền Nam"},
#  {:date=>Wed, 01 May 2024, :name=>"Ngày Quốc tế Lao động"},
#  {:date=>Sat, 10 Feb 2024, :name=>"Tết nguyên Đán"},
#  {:date=>Sun, 11 Feb 2024, :name=>"Tết nguyên Đán"},
#  {:date=>Mon, 12 Feb 2024, :name=>"Tết nguyên Đán"},
#  {:date=>Thu, 18 Apr 2024, :name=>"Giỗ tổ Hùng Vương"}
# ]

 VietnameseHoliday.between('2024-01-01', '2024-10-10')
# =>
# [{:date=>Mon, 01 Jan 2024, :name=>"Tết Dương lịch"},
#  {:date=>Fri, 09 Feb 2024, :name=>"Ngày Quốc Khánh"},
#  {:date=>Tue, 30 Apr 2024, :name=>"Ngày giải phóng miền Nam"},
#  {:date=>Wed, 01 May 2024, :name=>"Ngày Quốc tế Lao động"},
#  {:date=>Sat, 10 Feb 2024, :name=>"Tết nguyên Đán"},
#  {:date=>Sun, 11 Feb 2024, :name=>"Tết nguyên Đán"},
#  {:date=>Mon, 12 Feb 2024, :name=>"Tết nguyên Đán"},
#  {:date=>Thu, 18 Apr 2024, :name=>"Giỗ tổ Hùng Vương"}
# ]
```
