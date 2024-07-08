function main()
if GetTask(103) == 42 then
	Talk(2,"","<color=green>Vâ L©m Minh Chñ <color>: Vâ c«ng lµ ®Ó gióp ®êi, gióp ng­êi kh«ng ph¶i ®Ó chøng minh b¶n th©n",
	"Ng­¬i h·y thay ta ®i tiªu diÖt <color=yellow>Tµo Hïng 168/142<color>, mét tªn ph¶n quèc b¸n n­íc cÇu vinh th× ta míi truyÒn thÞ tinh hoa vâ häc ")
	Msg2Player("NhiÖm vô m«n ph¸i: §Õn Ch©n Nói Tr­êng B¹ch 168/142 tiªu diÖt Tµo Hïng ")
	SetTask(103,43)
elseif GetTask(103) == 44 then
	Talk(2,"","<color=green>Vâ L©m Minh Chñ <color>: TÊt c¶ nh÷ng g× mµ ta muèn d¹y ng­¬i lµ vËy, h·y vËn dông nã chø kh«ng ph¶i chØ dïng vâ c«ng cña m×nh",
	"<color=green>Vâ L©m Minh Chñ <color>: vÒ Ch­ëng M«n ®Ó häc tuyÖt kü ®i")
	Msg2Player("NhiÖm vô m«n ph¸i: Quay vÒ gÆp Ch­ëng M«n ®Ó phôc mÖnh !")
	SetTask(103,45)
else
	Talk(1,"","<color=green>Vâ L©m Minh Chñ <color>: §Ó lµm ®­îc Vâ L©m Minh Chñ kh«ng ph¶i chØ cã søc m¹nh lµ ®ñ ®©u ")
end
end