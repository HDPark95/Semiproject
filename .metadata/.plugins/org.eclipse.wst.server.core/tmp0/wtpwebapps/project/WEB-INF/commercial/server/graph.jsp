<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true"%>
<script src="https://d3js.org/d3.v5.min.js"></script>
<script>
const width = 500;
const height = 500;
const data = [
  {name: 'A', value: 1000, color: '#efa86b'},
  {name: 'B', value: 1500, color: '#c1484f'},
  {name: 'C', value: 1300, color: '#d35d50'},
  {name: 'D', value: 900, color: '#f4c17c'},
  {name: 'E', value: 400, color: '#fae8a4'},
  {name: 'F', value: 1200, color: '#df7454'},
  {name: 'G', value: 1100, color: '#e88d5d'},
  {name: 'H', value: 600, color: '#f8d690'}
];
const arc = d3.arc().innerRadius(150).outerRadius(Math.min(width, height) / 2);
// .arc() ���ο� �⺻���� ��ġ(ȣ) ����
// .innerRadius() ���� ������ ��, 0�̸� ������ ���̵ǰ� ���� ������ ���� ���°� �˴ϴ�.
// .outerRadius() �ٱ��� ��������
const arcLabel = (() => {
  const radius = Math.min(width, height) / 2 * 0.8;
  return d3.arc().innerRadius(radius).outerRadius(radius);
})();
// ���� ��ġ�� ������ ���� �����մϴ�.
const pie = d3.pie()
  // ���ο� �⺻���� ���� ����� ����
  .sort((a, b) => b.value - a.value)
  // data�� value ū�� > ������ ������ �����մϴ�. ex. �ݴ� ������ a.value - b.value
  .value(d => d.value);
const arcs = pie(data);
const svg = d3.select('body').append('svg').style('width', width).style('height', height)
  .attr('text-anchor', 'middle')
  // text-anchor �ؽ�Ʈ�� ������ �����մϴ� ( start | middle | end | inherit )
  .style('font-size', '12px sans-serif');
 
const g = svg.append('g')
  .attr('transform', `translate(${width/2}, ${height/2})`);
  // �켱 ��Ʈ�� �׸� �׷� ������Ʈ�� �߰��մϴ�.
  // ��ġ���� ���� 2�� �����°� ������ ���� �������� �ѹ��� ���� path�� �׸��� �����ΰ� �����ϴ�.
 
g.selectAll('path')
  .data(arcs)
  .enter().append('path')
  // ������ �����ϰ� ���� path ��Ҹ� ����� �׷��� �����Ϳ� �����Ͽ� ������Ʈ�� �߰��մϴ�.
    .attr('fill', d => d.data.color)
    // �ٸ� �׷����� �ٸ��� .data ��� ��ü�� �߰��Ǿ� �ִµ�, ���� arcs ������ �����Ҷ�
    // .pie(data)�� {data, value, index, startAngle, endAngle, padAngle} �� ���� ������ �ֽ��ϴ�.
    .attr('stroke', 'white')
    .attr('d', arc)
  .append('title')
    .text(d => `${d.data.name}: ${d.data.value}`);
    // ���� �佺�� �ڽ����� title�� ������Ʈ�� �ؽ�Ʈ�� ����մϴ�.
    // ������ �信 ��µ����� ������ �ø�ƽ�ϰ� ������ ����� ���� ���ڿ��� �����մϴ�.
 
const text = g.selectAll('text')
  .data(arcs)
  .enter().append('text')
    .attr('transform', d => `translate(${arcLabel.centroid(d)})`)
    .attr('dy', '0.35em');
  // ���� �밡�ϱ� ���� text ������Ʈ�� ����� ��ġ�� �����մϴ�.
 
text.append('tspan')
  .attr('x', 0)
  .attr('y', '-0.7em')
  .style('font-weight', 'bold')
  .text(d => d.data.name)
  // �ش� ������ �׸��� �̸��� �β��� �۾��� ����մϴ�. ex. A
 
text.filter(d => (d.endAngle - d.startAngle > 0.25)).append('tspan')
  .attr('x', 0)
  .attr('y', '0.7em')
  .attr('fill-opacity', 0.7)
  .text(d => d.data.value);
  // �ش� �������� ��ġ���� ������ �־� ����մϴ�. ex. 1000
 
svg.node();
</script>