theory Skeleton
  imports Pure
  keywords "skeleton" :: prf_block % "proof"
begin

ML\<open>
local
val basic_pattern = "proof\n  show ?thesis\n    sorry\nqed"
val dash_pattern = "proof -\n  show ?thesis\n    sorry\nqed"

val _ = Outer_Syntax.command \<^command_keyword>\<open>skeleton\<close> "TODO"
  ( (Args.$$$ "basic" || Args.$$$ "dash") >>
    (fn t => (Toplevel.proof (fn state =>
      let
        val pattern =
          if t = "basic" then basic_pattern
          else if t = "dash" then dash_pattern
          else error "Unknown skeleton type"
        val _ = Output.information (Active.sendback_markup_properties [] pattern)
      in state end)))
  )
in end\<close>

end