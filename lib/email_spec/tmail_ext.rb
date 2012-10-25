module EmailSpec::TMailExt
  def default_part
    @default_part ||= self
  end

  def default_part_body
    default_part.body
  end

  def default_part_body_text
    default_part_body
  end
end

TMail::Mail.send(:include, EmailSpec::TMailExt) if defined?(TMail::Mail)
