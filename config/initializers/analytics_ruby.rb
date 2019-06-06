
#Will create an instance of Analytics that you can use to send data to Segment for your source.

Analytics = Segment::Analytics.new({
    write_key: 'ZfTs3CYHec4VLI87cIUK6b1Mmu5ZWEBV',
    on_error: Proc.new { |status, msg| print msg }
})
