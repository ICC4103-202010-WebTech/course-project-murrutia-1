class MailboxController < ApplicationController
  before_action :authenticate_user!

  def inbox
    @inbox = mailbox.inbox
    @active = :inbox

  end

  def sent
    @sent = mailbox.sent
    @active = :sent
  end

  def trash
    @sent = mailbox.trash
    @active = :trash
  end
end
