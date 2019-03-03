# @param {String[]} emails
# @return {Integer}
def num_unique_emails(emails)
    @unique_emails = []
    emails.each do |email|
      user_address = email.split('@')[0]
      unique_user_address = user_address.split('+')[0]
      unique_user_address.tr!('.','')
      user_domain = email.split('@')[1]
      @unique_emails.push(unique_user_address + "@" + user_domain)
    end
    @unique_emails.uniq.count
end
