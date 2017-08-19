require "pque/version"

class Pque < Array

  def push(x)

    # 自分のノードの番号
    i = size
    while i > 0
      # 親のノードの番号
      p = (i - 1) / 2 #i = p*2 + 1
      # もう逆転してないなら抜けa
      break if self[p] >= x unless self[p].nil? # ヒープの不等号で順序が逆に
      # 親のノードの数字を下ろして、自分は上に
      self[i] =self[p]
      i = p
    end
    self[i] = x
  end

  def pop
    # 最大（小）値
    ret = self[0]
    #根に持ってくる値
    x = self[-1]
    # 根から下ろしていく
    i= 0
    while i * 2 + 1 < size - 1
      # 子同士を比較
      child1 = i * 2 + 1; child2 = i * 2 + 2
      child1 = child2 if child2 < self.size &&
        self[child2] > self[child1]# ヒープの不等号で順序が逆に
      # もう逆転してないなら終わり
      break if self[child1] <= x
      # この数字を持ち上げる
      self[i] = self[child1]
      i = child1
    end
    self[i] = x
    # self.delete_at(-1)
    ret
  end

end # class Pque

