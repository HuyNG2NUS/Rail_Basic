#Question 30)

#Cho array sau: nums = [7, 9, 22, 4, 5, 7, 8, nil, 100, -7, 9, 0, nil, nil].

#1/ Làm sao để đếm số phần tử của mảng
num.length

#2/ Làm sao để đếm số phần tử chẳn của mảng
num.count{|x| x%2 ==0}

#3/ Làm sao để truy xuất phần tử (đầu tiên / cuối cùng) của mảng
num[0]
num[-1]
num.first
num.last 

#4/ Làm sao để lấy ra 5 phần tử (đầu tiên / cuối cùng) của mảng
num.take(5)
num.drop(5)

#5/ Lám sao để lấy ra lát cắt từ phần tử thứ 2 đến thứ 4
num[2..4]

#6/ Làm sao để thêm số 3 vào đầu mảng, cuối mảng
num.unshift(3)
num << 3

#7/ Làm sao để thêm số 3 vào vị trí số 2 của mảng
num.insert(2,3)

#8/ Làm sao để rút phần tử đầu tiên ra khỏi mảng
num.shift

#9/ Làm sao để rút phần tử cuối cùng ra khỏi mảng
num.pop

#10/ Làm sao để xóa tất cả các số 9 ra khỏi mảng
num.delete(9)

#11/ Lám sao để xóa phần tử tại vị trí số 5 ra khỏi mảng
num.delete_at(5)

#12/ Duyệt qua các phần tử trong mảng, in ra màn hình (giá trị phần tử đó * 3)

nums.map {|nums| nums = nums * 3}

#13/ Duyệt qua các phần tử trong mảng, in ra màn hình (giá trị phần tử đó * 3 + index phần tử đó
for i in 0..(nums.length-1)
    p nums[i]*3 + i
end
(0..nums.index).each do |i,|
#Question 31)

#Cho array sau: nums = [7, 9, 22, 4, 5, 7, 8, nil, 100, -7, 9, 0, nil, nil].

#1/ Nêu công dụng của nums.fetch(100, nil)
#Trả ra giá trị ở vị trí 100, nhưng do k có giá trị ở index 100 nên fetch trả về giá trị thứ 2 là nil 

#2/ Làm sao để kiểm tra mảng của rỗng ko
nums.empty?

#3/ Làm sao để kiểm tra mảng có chứa số 23 không
nums.include?(23)

#4/ Làm sao để remove hết các phần tử nil ra khỏi mảng: không làm thay đổi mảng gốc / làm thay đổi mảng gốc
nums.delete(nil)

#5/ Làm sao để các phần tử trong mảng là duy nhất: không làm thay đổi mảng gốc / làm thay đổi mảng gốc
nums.uniq

#6/ Phân biệt each và map

Map lấy tất cả các đối tượng, sử dụng chúng chạy biểu thức trong block và trả về mảng mới là kết quả sau khi chạy hết tất cả các phần tử của mảng đối với biểu thức trong block
Nếu muốn lựa chọn ra các giá trị thỏa mãn 1 điều kiện nào đó với map thì nó sẽ trả về một mảng các giá trị true hoặc false 

Each sẽ thực thi biểu thức trong block với mỗi phần thử trong mảng và trả lại mảng ban đầu chứ không phải là mảng kết quả

#7/ Làm sao để tạo ra mảng mới từ mảng ban đầu, giá trị mỗi phần tử trong mảng mới bằng phần tử trong mảng ban đầu * 5
a = nums.map {|nums| nums * 5}

#8/ Làm sao để nâng giá trị mỗi phần tử trong mang ban đầu tăng lên 2 đơn vị (+2)
nums.map {|num| num + 2}

#9/ Làm sao để tạo ra mảng mới từ mảng ban đầu, điều kiện là các phần tử phải > 18
nums.take_while {|num| num > 18}

#10/ Làm sao để remove các phần tử <= 18 khỏi mảng gốc
nums.delete_if {|num| num <= 18}

#11/ Làm sao để tạo ra chuỗi "7,9,22,4,5,7,8,100,-7,9,0"
nums.join(",")

#12/ Làm sao để sắp xếp mảng này theo thứ tự tăng dần
nums.sort

#13/ Làm sao để sắp xếp mảng này theo thứ tự giảm dần
nums.sort { |a, b| b <=> a }

#14/ Làm sao để sắp xếp mảng này theo thứ tự số dư khi % cho 3 tăng dần


#Question 32)

#Cho 2 mảng sau: mang1 = [1, 2, 5, 7], mang2 = [5, 7, 10, 12]

#1/ Làm sao để lấy ra các phần tử thuộc mang1 mà không thuộc mảng 2
 mang1 - mang2

#2/ Làm sao để lấy ra các phần tử thuộc cả 2 mảng
 mang1  & mang 2

#3/ Làm sao để lấy ra các phần tử thuộc mang1 hoặc thuộc mang2
(mang1 - mang2) + (mang2 - mang1)

#4/ Làm sao để kiểm tra 2 mảng có giống nhau không(bỏ qua thứ tự các phần tử và sự lặp lại của các phần tử), ví dụ: [1, 2, 3] giống [2, 1, 3], [1, 2, 3] giống [2, 1, 3, 3]

#5/ Làm sao để kiểm tra 2 mảng có giống nhau không(xét luôn cả thứ tự các phần tử và sự lặp lại của các phần tử), ví dụ: [1, 2, 3] giống [1, 2, 3], [1, 2, 3] không giống [2, 1, 3, 3] không giống [2, 1, 3]


#Question 33)

#Cho mảng hybrid = [1, 2, 3, [5, 7, 9], [11, 22], 7]

#- Làm sao để tạo ra mảng mới = [1, 2, 3, 5, 7, 9, 11, 22, 7]
a = hybrid.flatten
#- Làm sao để biến mảng cũ thành [1, 2, 3, 5, 7, 9, 11, 22, 7]
hybrid.flatten!
