# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(first_name: "Jim", last_name: "O'Neal", username: "jamesponeal", password: "starwars", admin: true, description: "Here I am!")

Post.create!(title: "CSS Concept: Margin, Border, and Padding", content: "<p>
        The difference between margin, border, and padding can be confusing for beginner web developers as it was for me.  But with a little explanation, the CSS box-model is actually very simple.
      </p>
      <p>Basically the padding is what exists between the content of a block and the border, the margin is what exists between the border and the edge of the block, and the border is what is in the middle.  All three of these things can be non-existent, or they can have a thickness which can be specified using two different methods.  Borders and padding can have a background, but the margin is transparent and will show whatever background it overlaps.</p>
      <p>You can specify margin or padding on each side of the block individually, or all on one line as shown in the examples below.  When the margin or padding is specified all on one line, the first number is the top and then rotates clockwise to right, bottom, and left.
      </p>
        <section class='code'>
        padding-top: 0px;<br>
        padding-right: 0px;<br>
        padding-bottom: 0px;<br>
        padding-left: 0px;<br>
        <br>
        padding: 0px 0px 0px 0px;<br>
        </section class='code'>
      <p>If you want your entire block to take up a certain amount of space, the important thing to remember is that your border has a thickness, and the padding thickness extends to the inside edge of the border, and the margin thickness doesn't start until the outside edge of the border.</p>
      <p>Thanks for reading my blog, I hope you learned something about padding, border, and margin!</p>", author_id: 1, created_at: "2015-11-29")
Post.create!(title: "Arrays and Hashes in Ruby", content: "<p>
        In this blog post I will discuss Arrays and Hashes in Ruby, what they are, what are the differences, and will give some examples of both.
      </p>
      <p>
        Arrays and hashes have important similarities and important differences.  Both arrays and hashes are like storage bins that can hold pieces of information (elements) in specific slots.  Both arrays and hashes can be assigned a name, so that the array or hash can be utilized in other parts of the program, and the elements can be accessed individually.  Both arrays and hashes can contain strings, numbers, or even other arrays or hashes.
      </p>
      <p>
        The important difference between an array and hash is how the 'slots' are named.  In an array, each slot has an index number, starting at 0 and then increasing by 1's for each element.  The elements in an array are accessed by refering to this index number.  Hashes on the other hand index by using a 'key' which can be assigned a specific name.  This allows the program to access the value in the hash by refering to a name rather than just an index number.
      </p>
      <p>
        Below are some examples showing the format of an array and how to access elements:
      </p>
      <p class='code'>
        sample_array = ['this', 'is', 'an', 'array']<br>
        <br>
        return sample_array[0] # 'this'<br>
        return sample_array[1] # 'is'<br>
        return sample_array[2] # 'an'<br>
        return sample_array[3] # 'array'<br>
      </p>
      <p>
        Below is an example of a hash and how to access the values in a hash using the keys:
      </p>
      <p class='code'>
        sample_hash = {<br>
        &nbsp;&nbsp;favorite_number: 13,<br>
        &nbsp;&nbsp;favorite_color: 'blue',<br>
        &nbsp;&nbsp;favorite_animal: 'elephant',<br>
        }<br>
        <br>
        return sample_hash[:favorite_number] # 13<br>
        return sample_hash[:favorite_color] # 'blue'<br>
        return sample_hash[:favorite_animal] # 'elephant'<br>
      </p>", author_id: 1, created_at: "2015-12-4")
Post.create!(title: "Ruby Enumerable Method .group_by", content: "<p>
        In this blog post I will discuss a ruby enumerable method called .group_by.  I chose this method from a list of three methods available for this exercise: .group_by, .cycle, and .map.  I chose .group_by because it seemed the most interesting and one that I have never used.
      </p>
      <p>
        The .group_by method is a very useful method.  The description of this method from the website ruby-doc.org is as follows:  Groups the collection by result of the block. Returns a hash where the keys are the evaluated result from the block and the values are arrays of elements in the collection that correspond to the key. <br>
        The syntax of the method works similar to the .each method which should be familiar to most of the readers here.  The method is typically called on a list of data or an array.  The important thing to remember is that .group_by will always return a hash, and the elements of the passed-in data will be the values in the hash, not the keys.
      </p>
      <p>
        To help this method make sense, below are a few simple examples and the result when the method is run:
      </p>
      <p><u>Example 1:</u></p>
      <p class='code'>
        hash1 = (1..6).group_by { |i| i%3 }<br>
        <br>
        hash1 = {<br>
        &nbsp;&nbsp;1=>[1, 4],<br>
        &nbsp;&nbsp;2=>[2, 5],<br>
        &nbsp;&nbsp;0=>[3, 6]<br>
        }<br>
      </p>
      <p><u>Example 2:</u><br></p>
      <p class='code'>
        test_array = [1,2,3,4,5,6]<br>
        <br>
        hash2 = test_array.group_by{|x| x > 3}<br>
        <br>
        hash2 = {<br>
        &nbsp;&nbsp;false=>[1, 2, 3],<br>
        &nbsp;&nbsp;true=>[4, 5, 6]<br>
        }<br>
      </p>
      <p><u>Example 3:</u><br></p>
      <p class='codewide'>
        name_array = ['Jim', 'Bob', 'Kate', 'Dave', 'James', 'Thomas', 'Carrie', 'Rumpelstiltskin']<br>
        <br>
        hash3 = name_array.group_by{|x| x.length}<br>
        <br>
        hash3 = {<br>
        &nbsp;&nbsp;3=>['Jim', 'Bob'],<br>
        &nbsp;&nbsp;4=>['Kate', 'Dave'],<br>
        &nbsp;&nbsp;5=>['James'],<br>
        &nbsp;&nbsp;6=>['Thomas', 'Carrie'],<br>
        &nbsp;&nbsp;15=>['Rumpelstiltskin']<br>
        }<br>
      </p>
      <p><u>Example 4:</u><br></p>
      <p class='codewide'>
        food_array = ['Carrot Cake', 'Steak', 'Pumpkin Pie', 'Blueberry Pie', 'Hamburger', 'Pizza', 'Chocolate Cake', 'Salad']<br>
        <br>
        hash4 = food_array.group_by do |x|<br>
        &nbsp;&nbsp;if x.include?('Cake') || x.include?('Pie')<br>
        &nbsp;&nbsp;&nbsp;&nbsp;'Dessert'<br>
        &nbsp;&nbsp;else<br>
        &nbsp;&nbsp;&nbsp;&nbsp;'Dinner'<br>
        &nbsp;&nbsp;end<br>
        end<br>
        <br>
        hash4 = {<br>
        &nbsp;&nbsp;'Dessert'=>['Carrot Cake', 'Pumpkin Pie', 'Blueberry Pie', 'Chocolate Cake'],<br>
        &nbsp;&nbsp;'Dinner'=>['Steak', 'Hamburger', 'Pizza', 'Salad']<br>
        }<br>
      </p>", author_id: 1, created_at: "2015-12-13")
Post.create!(title: "Classes in Ruby", content: "<p>
        In this blog, I will discuss classes in Ruby, show an example class and talk about when to use isntance variables vs local variables.
      </p>
      <p>
        A class is a set of rules, methods, and plans for how an object behaves.  An object is always part of a class.  Classes are very useful in Ruby because methods can be grouped together inside a class and made available to any object created that is part of that class.
      </p>
      <p>
        In the example below, I have an example of a class called 'Pet' which simulates a virtual pet. Inside the class are three methods that describe things you can do with the pet: walk it, feed it, and put it to bed.  There is also a method to check to see if the pet is still alive after each action.
      </p>
      <p class='code'>
        class Pet<br>
<br>
        &nbsp;&nbsp;def initialize<br>
        &nbsp;&nbsp;&nbsp;&nbsp;@happiness = 5<br>
        &nbsp;&nbsp;&nbsp;&nbsp;@hunger = 5<br>
        &nbsp;&nbsp;&nbsp;&nbsp;@energy = 5<br>
        &nbsp;&nbsp;&nbsp;&nbsp;@alive_status = true<br>
        &nbsp;&nbsp;end<br>
<br>
        &nbsp;&nbsp;def walk<br>
        &nbsp;&nbsp;&nbsp;&nbsp;@happiness += 1<br>
        &nbsp;&nbsp;&nbsp;&nbsp;@hunger += 1<br>
        &nbsp;&nbsp;&nbsp;&nbsp;@energy -= 1<br>
        &nbsp;&nbsp;&nbsp;&nbsp;still_alive?<br>
        &nbsp;&nbsp;end<br>
<br>
        &nbsp;&nbsp;def feed<br>
        &nbsp;&nbsp;&nbsp;&nbsp;@hunger -= 2<br>
        &nbsp;&nbsp;&nbsp;&nbsp;@happiness += 1<br>
        &nbsp;&nbsp;&nbsp;&nbsp;still_alive?<br>
        &nbsp;&nbsp;end<br>
<br>
        &nbsp;&nbsp;def put_to_bed<br>
        &nbsp;&nbsp;&nbsp;&nbsp;@hunger += 1<br>
        &nbsp;&nbsp;&nbsp;&nbsp;@energy += 2<br>
        &nbsp;&nbsp;&nbsp;&nbsp;@happiness -= 1<br>
        &nbsp;&nbsp;&nbsp;&nbsp;still_alive?<br>
        &nbsp;&nbsp;end<br>
<br>
        &nbsp;&nbsp;def still_alive?<br>
        &nbsp;&nbsp;&nbsp;&nbsp;@alive_status = false if @happiness <= 0<br>
        &nbsp;&nbsp;&nbsp;&nbsp;@alive_status = false if @hunger >= 10<br>
        &nbsp;&nbsp;&nbsp;&nbsp;@alive_status = false if @energy <= 0<br>
        &nbsp;&nbsp;end<br>
<br>
        end<br>
      </p>
      <p>
        In this example, there are variables that are created on the initialization of a new instance of 'Pet'.  These variables are created as instance variables because they are intended to belong to that instance of the object of 'Pet'.  They also need to be instance variables because these variables will be used in multiple methods inside the class.  An instance variable is indicated by using '@' symbol in front of the variable name.
      </p>
      <p>
        In my example code, the instance variables will be assigned to a new instance of Pet.  These variables can then be used inside the walk, feed, and put_to_bed methods, as well as the still_alive? method.  The variables are saved as part of the Pet object and do not belong specifically to an individual method like a local variable would be.
      </p>
      <p>
        Classes and instance variables are part of what makes Ruby powerful and useful.  For more information on both, see David Black's 'The Well Grounded Rubyist', or Chris Pine's 'Learn to Program'.
      </p>", author_id: 1, created_at: "2015-12-20")
Post.create!(title: "Test Driven Development", content: "<p>
        I have chosen to write this blog post on the topic of Test Driven Development (TDD) because I think it is important and essential to writing good functional code.
      </p>
      <p>
        I first heard of TDD a couple of months before starting phase 0 of bootcamp through a friend who is a software developer in JavaScript.  In our discussion about me wanting to become a developer, he mentioned the concept of test driven development, and that he starts writing tests for what he wants his code to do before he starts writing the actual code.
      </p>
      <p>
        Having no real concept of what he was talking about, since at that time I had only worked on some tutorials on CodeCademy, I didn't give it much thought.  I pushed it to the back of my mind as I continued through my learning process and entered phase 0, but remembered what my friend said when we started getting into using rspec files to test our code.  Once I understood what the rspec files were doing, and how useful they were, that is when TDD really hit home for me and I realized how important TDD is.
      </p>
      <p>
        The basic procedure for TDD is as follows:<br>
        <ol>
          <li>Add a test. In test-driven development, each new feature begins with writing a test.</li>
          <li>Run all tests and see if the new one fails.  This validates that the test harness is working correctly, that the new test does not mistakenly pass without requiring any new code, and that the required feature does not already exist.</li>
          <li>Write some code. The next step is to write some code that causes the test to pass.</li>
          <li>Run tests. If all test cases now pass, the programmer can be confident that the new code meets the test requirements, and does not break or degrade any existing features.</li>
          <li>Refactor code.</li>
          <li>Repeat.</li>
        </ol>
      </p>
      <p>
        There are many benefits to TDD, many of which I'm sure only become apparent after trying development with and without a test driven process. In a 2005 study that can be found <a class='textlink' href='http://nparc.cisti-icist.nrc-cnrc.gc.ca/npsi/ctrl?action=shwart&index=an&req=5763742&lang=en'>HERE</a>, it was concluded that programmers who use TDD tend to me more productive.  However, the study was not able to conclude that code quality improved.  However, even without proof from a formal study, I think there are few that would argue against the idea that TDD has benefits, albiet some of them maybe more intangible.  In my reading on TDD, I have summarized a few of the benefits that I believe can be gained from implementing a TDD concept:
        <ol>
          <li>Cut development costs.</li>
          <li>Shorten the development time.</li>
          <li>Increase the programmer&#39s productivity.</li>
          <li>Produce efficent, organized, and quality code that works.</li>
          <li>Provide unmistakable proof that your software code works as intended.</li>
        </ol>
      </p>
      <p>
        I think that utilizing a test-driven develoment process has real benefits both to the programmer and their client.  It is something that I plan on studying more, and becoming proficient doing during my time at DevBootcamp.  Two books that I have been informed of that I plan on reading soon are <a class='textlink' href='http://amzn.com/1934356379'>'The Rspec Book'</a> by David Chelminsky, and <a class='textlink' href='http://amzn.com/0321146530'>'Test Driven Development'</a> by Kent Beck.
      </p>
      <p>
        I found a great quote that I'd like to share:
      </p>
      <p class='quote'>
        &nbsp;&nbsp;'If it's worth building, it's worth testing.'<br>
        &nbsp;&nbsp;'If it's not worth testing, why are you wasting your time working on it?'<br>
        &nbsp;&nbsp;&nbsp;&nbsp;- Scott W. Ambler
      </p>", author_id: 1, created_at: "2016-01-07")
