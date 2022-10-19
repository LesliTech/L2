# frozen_string_literal: true

L2.m("holi")
puts ("\n")
L2.m("hola", "hola tu", "holanda")
puts ("\n")

L2.msg("holi")
puts ("\n")
L2.msg("hola", "hola tu", "holanda")
puts ("\n")

L2.info("holi")
puts ("\n")
L2.info("hola", "hola tu", "holanda")
puts ("\n")

L2.success("holi")
puts ("\n")
L2.success("hola", "hola tu", "holanda")
puts ("\n")

L2.warning("holi")
puts ("\n")
L2.warning("hola", "hola tu", "holanda")
puts ("\n")

L2.danger("holi")
puts ("\n")
L2.danger("hola", "hola tu", "holanda", 1, 2, 1.8, [1,2,3], {"a":"b"})
puts ("\n")

L2.fatal("holi")
puts ("\n")
L2.fatal("hola", "hola tu", "holanda")
puts ("\n")

L2.alert("holi")
puts ("\n")
L2.alert("hola", "hola tu", "holanda")
puts ("\n")

L2.deprecation("holi")
puts ("\n")

L2.list("hola", "hola tu", "holanda")
puts ("\n")

L2.table([
    { name: "Luis Donis", title: "software developer" },
    { name: "Luis Donis", title: "software developer" }
])
puts ("\n")

=begin
RSpec.describe L2 do


    it "has a version number" do
        expect(L2::VERSION).not_to be nil
    end

    it "print simple messages" do
        L2.m("holi")
        L2.m("hola", "hola tu", "holanda")
    end

    it "print messages" do
        L2.msg("holi")
        L2.msg("hola", "hola tu", "holanda")
    end

    it "print information messages" do
        L2.info("holi")
        L2.info("hola", "hola tu", "holanda")
        L2.fatal("hola", "hola tu", "holanda")
        L2.alert("holi")
    end

    it "print deprecation messages" do
        L2.deprecation("holi")
    end

    it "print warning messages" do
        L2.warn("holi")
        L2.warn("hola", "hola tu", "holanda")
    end

    it "print error messages" do
        L2.error("holi")
        L2.error("hola", "hola tu", "holanda")
    end

    it "print success messages" do
        L2.success("holi")
        L2.success("hola", "hola tu", "holanda")
    end

    it "print fatal messages" do
        L2.fatal("holi")
        L2.fatal("hola", "hola tu", "holanda")
    end

    it "print alert messages" do
        L2.alert("holi")
    end

end
=end
