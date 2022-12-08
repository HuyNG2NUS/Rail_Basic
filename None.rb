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

=begin
Cho chuỗi sau: names = "nga trung hoa hiền nga trung hoa hiền kiên hà hải".

1/ Làm sao để đếm độ dài của chuỗi

2/ Làm sao để lấy được 3 ký tự (đầu tiên / cuối cùng): không làm thay đổi chuỗi gốc / làm thay đổi chuỗi gốc
3/ Làm sao để lấy ra các ký tự từ vị trí 3 đến vị trí 7: không làm thay đổi chuỗi gốc / làm thay đổi chuỗi gốc

4/ Làm sao để thêm "vinh " vào đầu chuỗi: không làm thay đổi chuỗi gốc / làm thay đổi chuỗi gốc
5/ Làm sao để thêm " vinh" vào cuối chuỗi: không làm thay đổi chuỗi gốc / làm thay đổi chuỗi gốc
6/ Làm sao để thêm " vinh" vào vị trí 3 của chuỗi: không làm thay đổi chuỗi gốc / làm thay đổi chuỗi gốc

7/ Làm sao để thay thế tất cả "nga" bằng "nhân": không làm thay đổi chuỗi gốc / làm thay đổi chuỗi gốc
8/ Làm sao để thay thế các ký tự từ vị trí số 3 đến 7 bằng "nhân": không làm thay đổi chuỗi gốc / làm thay đổi chuỗi gốc

9/ Làm sao để xoá tất cả "nga" ra khỏi mảng: không làm thay đổi chuỗi gốc / làm thay đổi chuỗi gốc

10/ Làm sao để viết hoa ký tự đầu tiên của chuỗi: không làm thay đổi chuỗi gốc / làm thay đổi chuỗi gốc
11/ Làm sao để viết hoa tất cả chuỗi: không làm thay đổi chuỗi gốc / làm thay đổi chuỗi gốc
12/ Làm sao để viết thường tất cả chuỗi: không làm thay đổi chuỗi gốc / làm thay đổi chuỗi gốc

13/ Làm sao để kiểm tra chuỗi có chứa "dương" hay không
14/ Làm sao để kiểm tra chuỗi có empty hay không

15/ Làm sao để remove tất cả space khỏi chuỗi: không làm thay đổi chuỗi gốc / làm thay đổi chuỗi gốc

16/ Làm sao để tạo ra mảng ["nga", "trung", "hoa", "hiền", "nga", "trung", "hoa", "hiền", "kiên", "hà", "hải"]
=end
#================================================================================================================================================================

=begin
Cho array sau: nums = [7, 9, 22, 4, 5, 7, 8, nil, 100, -7, 9, 0, nil, nil].

1/ Làm sao để đếm số phần tử của mảng
2/ Làm sao để đếm số phần tử chẳn của mảng

3/ Làm sao để truy xuất phần tử (đầu tiên / cuối cùng) của mảng
4/ Làm sao để lấy ra 5 phần tử (đầu tiên / cuối cùng) của mảng
5/ Lám sao để lấy ra lát cắt từ phần tử thứ 2 đến thứ 4

6/ Làm sao để thêm số 3 vào đầu mảng,  cuối mảng
7/ Làm sao để thêm số 3 vào vị trí số 2 của mảng

8/ Làm sao để rút phần tử đầu tiên ra khỏi mảng
9/ Làm sao để rút phần tử cuối cùng ra khỏi mảng

10/ Làm sao để xóa tất cả các số 9 ra khỏi mảng
11/ Lám sao để xóa phần tử tại vị trí số 5 ra khỏi mảng

12/ Duyệt qua các phần tử trong mảng, in ra màn hình (giá trị phần tử đó * 3)
13/ Duyệt qua các phần tử trong mảng, in ra màn hình (giá trị phần tử đó * 3 + index phần tử đó)

================================================================================================================================================================

Cho 2 mảng sau: mang1 = [1, 2, 5, 7], mang2 = [5, 7, 10, 12]

1/ Làm sao để lấy ra các phần tử thuộc mang1 mà không thuộc mảng 2
2/ Làm sao để lấy ra các phần tử thuộc cả 2 mảng
3/ Làm sao để lấy ra các phần tử thuộc mang1 hoặc thuộc mang2

4/ Làm sao để kiểm tra 2 mảng có giống nhau không(bỏ qua thứ tự các phần tử và sự lặp lại của các phần tử), ví dụ: [1, 2, 3] giống [2, 1, 3], [1, 2, 3] giống [2, 1, 3, 3]

5/ Làm sao để kiểm tra 2 mảng có giống nhau không(xét luôn cả thứ tự các phần tử và sự lặp lại của các phần tử), ví dụ: [1, 2, 3] giống [1, 2, 3], [1, 2, 3] không giống [2, 1, 3, 3] không giống [2, 1, 3]

================================================================================================================================================================

Cho hash status_mapping = {pending: 0, approved: 1, declined: 2}

1/ Làm sao để duyệt qua từng cặp key value trong hash và in  ra màn hình theo format sau "key, value"
2/ Làm sao để lấy ra mảng các key của hash , cụ thể: [:pending, :approved, :declined]
3/ Lám sao để lấy ra mảng các value của hash, cụ thể: [0, 1, 2]

4/ Làm sao để lấy ra key có value là 1
5/ Làm sao để lấy ra value có key là declined

6/ Làm sao để xóa cặp key value có key là pending
7/ Làm sao để xóa cặp key value nếu (value % 2 + 3 / 700 > 7)

8/ Làm sao để kiểm tra hash có key :not_response hay không
9/ Làm sao để kiểm tra hash có value 3 hay không

10/ Làm cách nào để thêm cặp key: value - not_response: 3 vào hash

11/ Cho biết kết quả của status_mapping.merge pre_defined: -1, pending: 5 . Hàm này có làm thay đổi hash ban đầu không

=end





class Driver
    public
    def public_method
    puts "public_method called"
    
    private_method()
    protected_method()
    
    self.private_method()
    self.protected_method()
    
    d = Driver.new
    d.private_method()
    d.protected_method()
    end

    private
    def private_method
    puts "private_method called"
    end

    protected
    def protected_method
    puts "protected_method called"
    end

end
    
    d = Driver.new
    d.private_method()
    #d.protected_method()
    d.public_method()
    