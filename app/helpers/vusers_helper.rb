module VusersHelper

  def grid
    vs='  <el-table :data="tableData" style="width: 100%">'
    for att in User.new.attributes do
      vs = vs.concat '<el-table-column prop="'+att[0]+'" label="'+att[0]+'" width="180"></el-table-column>\n'
    end
    vs = vs.concat ' </el-table>'
    vs.html_safe
  end

end