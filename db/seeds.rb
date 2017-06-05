Link.destroy_all
class Seed

  def self.start
    seed = Seed.new
    seed.create_links
  end

  def create_links
    Link.create(url: "http://apple.com", read:10)
    Link.create(url: "http://appl.com", read:1)
    Link.create(url: "http://appe.com", read:15)
    Link.create(url: "http://aple.com", read:2)
    Link.create(url: "http://apple.com", read:11)
    Link.create(url: "http://pple.com", read:11)
    Link.create(url: "http://ple.com", read:12)
    Link.create(url: "http://le.com", read:13)
    Link.create(url: "http://e.com", read:14)
    Link.create(url: "http://app.com", read:15)
    Link.create(url: "http://macbook.com", read:11)
    Link.create(url: "http://book.com", read:16)
    Link.create(url: "http://mac.com", read:15)
    Link.create(url: "http://mcbook.com", read:17)
  end
end
Seed.start

