package bit.com.a.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import bit.com.a.dto.likeClassParam;
import bit.com.a.dto.likesDto;
import bit.com.a.dto.onedayClassDto;

@Mapper
@Repository
public interface likesDao {
	
	public int checkLike(likesDto dto);
	public int addLike(likesDto dto);
	public int delLike(likesDto dto);
	public List<onedayClassDto> getLikeClassList(likeClassParam parma);
	public int getLikeClassCount(likeClassParam parma);

}