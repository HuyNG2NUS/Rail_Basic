class People
    def initialize (name, age)
        @p_name = name
        @p_age = age
    end
end

a = Array.new (10, People.new("",20))

for i in a do 
    a[i].@p_age = 30;
end

=begin
Viết class Person, nhập vào tên và năm sinh (bắt buộc) và giới tính (không bắt buộc);

1/ Viết method tính tuổi;
2/ Viết method cho phép thay đổi tên và năm sinh; Có bao nhiêu cách viết và nên dùng cách nào;
3/ Viết method đếm số lượng person đã được tạo ra;

5/ Viết method lấy ra giờ phút giây được tạo của person đó.
7/ Viết class Male kế thừa từ People, có giới tính mặc định là “male”
8/ Viết module Action và sử dụng ở class Male; trong module có những method:
8.1/ Viết method lấy tên person, viết hoa tất cả chữ cái đầu, ví dụ: "nguyễn gia huy" => "Nguyễn Gia Huy"
8.2 Viết method xác định person đó đã trưởng thành chưa ( return true nếu tuổi lớn hơn 18)
8.3/ Define constant ở module Action và in ra màn hình nếu person được khởi tạo
8.4/ Define method kiểm tra tên có chứa string (nhập vào tự do) hay không
8.5/ Define method kiểm tra tuổi có nằm trong khoảng từ 18 đến 60 hay không

9/ Tạo 1 array gồm 10 phần tử person có tên và tuổi;
10/ Duyệt qua array trên và update lại gender cho từng person theo index như sau:
  - index chia hết cho 2: male
  - index chia hết cho 3: other
  - còn lại là female
11/ Remove tất cả person trong array trên nếu tuổi nhỏ hơn 18
12/ Define variable sử dụng được ở cả class và module
=end

class People
    @@count = 0
    def initialize (name, year_age)
        @name = name
        @year_age = year_age
        gender 
    end
    def name                 #get
        @name
    end
    def name = (name)       #set
        @name = name
    end
    def year_age
        @year_age
    end
    def year_age = (year_age)
        @year_age = year_age
    end
    def gender
        gender
    end
    def gender = (pgender)
        gender = pgender
    end

    def tinhtuoi 
        return Time.now.year - year_age
    end
    def demP
        return @@count += 1
    end
    def timeCreat
        return Time.new.strftime("%H:%M:%S")
    end
end

module Action
    def capitalizeName (People)
        return People.name.split.map(&:capitalize).join(' ')
    end
    def truongThanh (People)
        if (People.tinhtuoi > 18)
            return true
        else 
            return false
        end
    end
    #Define method kiểm tra chuỗi string (nhập vào tự do) có nằm trong name hay không

    def testTuoi (People)
        case People.tinhtuoi
        when 18..60
            return true
        else 
            return false
        end
    end

end

class Male < People
    include Action
    GENDER = "male"
end
