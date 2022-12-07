$global_variable = "global variable "

module Action
    THONGBAO = "New People"
    def tinhtuoi 
        return Time.now.year - year_age
    end 

    def change_NY (name, year)
        @year_age = year
        @name = name
    end

    def timeCreat
        return Time.new.strftime("%H:%M:%S")
    end

    def capitalizeName (people)
        return people.name.split.map(&:capitalize).join(' ')
    end

    def truongThanh (people)
        if (people.tinhtuoi > 18)
            return true
        else 
            return false
        end
    end

    def test_Str (str)
        if (self.name.casecmp?(str))
            return "Good"
        else
            return "Hmmm...Sure?"
        end
    end

    def testTuoi (people)
        case people.tinhtuoi
        when 18..60
            return true
        else 
            return false
        end
    end

end

class People
    include Action
    @@count = 0
    def initialize (name, year_age, gender="")
        @name = name
        @year_age = year_age
        @gender = gender
        @@count +=1
        p THONGBAO
        p $global_variable
        p @@count
    end

    #get/set
    attr_accessor :name, :year_age, :gender
end

#======================================================================================================================================================

    # def name                 #get
    #     @name
    # end

    # def name= (name)       #set
    #     @name = name
    # end

    # def year_age
    #     @year_age
    # end

    # def year_age= (year_age)
    #     @year_age = year_age
    # end

    # def gender
    #     @gender
    # end

    # def gender= (pgender)
    #     @gender = pgender
    # end

#8/ Viết module Action và sử dụng ở class Male; trong module có những method:
module action
    # 1/ Viết method tính tuổi;
    def tinhtuoi 
        return Time.now.year - year_age
    end

# 2/ Viết method cho phép thay đổi tên và năm sinh; Có bao nhiêu cách viết và nên dùng cách nào;
    def change_NY (name, year)
        @year_age = year
        @name = name
    end

#3/ Viết method đếm số lượng person đã được tạo ra;
    def demP
        return @@count
    end
    
#5/ Viết method lấy ra giờ phút giây được tạo của person đó.
    def timeCreat
        return Time.new.strftime("%H:%M:%S")
    end

    #8.1/ Viết method lấy tên person, viết hoa tất cả chữ cái đầu, ví dụ: "nguyễn gia huy" => "Nguyễn Gia Huy"
    def capitalizeName (people)
        return people.name.split.map(&:capitalize).join(' ')
    end

    #8.2 Viết method xác định person đó đã trưởng thành chưa ( return true nếu tuổi lớn hơn 18)
    def truongThanh (people)
        if (people.tinhtuoi > 18)
            return true
        else 
            return false
        end
    end

    #8.3/ Define constant ở module Action và in ra màn hình nếu person được khởi tạo
    THONGBAO = "New People"

    #8.4/ Define method kiểm tra tên có chứa string (nhập vào tự do) hay không
    def test_Str (str)
        if (self.name.casecmp?(str))
            return "Good"
        else
            return "Hmmm...Sure?"
        end
    end

    #8.5/ Define method kiểm tra tuổi có nằm trong khoảng từ 18 đến 60 hay không
    def testTuoi (people)
        case people.tinhtuoi
        when 18..60
            return true
        else 
            return false
        end
    end

end

#7/ Viết class Male kế thừa từ People, có giới tính mặc định là “male”
class Male < People
    include Action
    GENDER = "male"
    def initialize (name, year_age, gender='')
        super
        @gender = GENDER
    end
end

# 9/ Tạo 1 array gồm 10 phần tử person có tên và tuổi;
arr = Array.new(10, People.new("Huy",2000))

# 10/ Duyệt qua array trên và update lại gender cho từng person theo index như sau:
#   - index chia hết cho 2: male
#   - index chia hết cho 3: other
#   - còn lại là female
for i in 0..arr.length
    if (i%2 == 0)
        People[i].gender = "male"
    elsif (i%3 == 0)
        People[i].gender = "other"
    else
        People[i].gender = "female"
    end
end

# 11/ Remove tất cả person trong array trên nếu tuổi nhỏ hơn 18
arr.delete_if {|arr| arr.tinhtuoi() < 18}
# 12/ Define variable sử dụng được ở cả class và module


# #cha
# def initialize (name, year_age, gender="")
#     @name = name
#     @year_age = year_age
#     @gender = gender
# end




