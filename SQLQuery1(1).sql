create view SScoreAVG 
AS 
SELECT  ѧ��.ѧ��,AVG(�ɼ�) as ƽ���ɼ�
from ѧ�� inner join ѧ��_�γ� on ѧ��.ѧ��=ѧ��_�γ�.ѧ�� 
group by ѧ��.ѧ��

create view CScoreAVG
AS
SELECT ѧ��_�γ�.�γ̱�� ,avg(ѧ��_�γ�.�ɼ�) as ƽ���ɼ�
from ѧ��_�γ�
group by �γ̱�� 
/*+רҵ_�γ̱�+�γ�.�γ�ѧ����*/
create view V_�����ƿγ̼ƻ�_1
(�γ���,�γ�����,����ѧ��,ѧ��)
as
select �γ�.�γ�����,�γ�.�γ����,רҵ_�γ�.����ѧ��,�γ�.�γ�ѧ��
from רҵ_�γ� join �γ� on �γ�.�γ̱��=רҵ_�γ�.�γ̱��
where רҵ_�γ�.רҵ��� in(select רҵ��� from רҵ where רҵ����='������')

create view ������ѧ��
(ѧ��,����)
as
select ѧ��.ѧ��,ѧ��.����
from ѧ�� join ѧ��_�γ� on ѧ��.ѧ��=ѧ��_�γ�.ѧ��
join �γ� on �γ�.�γ̱��=ѧ��_�γ�.�γ̱��
where �γ�.�γ�����='�ߵ���ѧ'

create view �����


